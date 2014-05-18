#!/usr/bin/env php
<?php

/**
 * Dotfiles
 *
 * Recursively symlinks all the files from this script's directory into the
 * home directory as a dot files.
 */

// The list of files which should be ignored.
$skipfiles = array(
    'install.php',
    'LICENSE.md',
    'README.md',
    '.*',
);

/**
 * Utility function to scan a directory recursively.
 */
function scandir_recursive($dir)
{
    $root = scandir($dir);
    $result = array();
    foreach ($root as $value) {
        if ($value === '.' || $value === '..') {
            continue;
        }
        if (is_file("$dir/$value")) {
            $result[] = "$dir/$value";
            continue;
        }
        foreach (scandir_recursive("$dir/$value") as $value) {
            $result[] = $value;
        }
    }
    return $result;
}

/**
 * Utility function to retrieve the string before the last given character.
 */
function reverse_strrchr($haystack, $needle)
{
    if ($pos = strrpos($haystack, $needle)) {
        return substr($haystack, 0, $pos + 1);
    }
    return false;
}

/**
 * Utility function to recursively delete a directory.
 */
function rrmdir($dir)
{
    foreach(glob($dir . '/*') as $file) {
        if(is_dir($file)) {
            rrmdir($file);
        }
        else {
            unlink($file);
        }
    }
    rmdir($dir);
}

/**
 * Recursively scan through to get a list of each file in the directory.
 */
foreach (scandir_recursive(__DIR__) as $file)
{
    // Remove the base directory from the absolute file path.
    $file = str_replace(__DIR__ . '/', '', $file);

    // Ensure we are not to ignore the file.
    $ignore = false;
    foreach ($skipfiles as $skip) {
        // Check if the pattern matches an ignore path.
        if (fnmatch($skip, $file)) {
            $ignore = true;
            break;
        }
    }

    // See if we are ignoring the file or not.
    if (!$ignore) {
        echo "Processing .$file\n";
        $target = __DIR__ . '/' . $file;
        $link = $_SERVER['HOME'] . '/.' . $file;

        // Check if the file is to be placed in a directory.
        if ($dir = reverse_strrchr($file, '/')) {
            // Ensure the target directory exists.
            $dir = $_SERVER['HOME'] . '/.' . $dir;
            if (!is_dir($dir)) {
                mkdir($dir, 0777, TRUE);
            }
        }

        // Remove the current dotfile or directory.
        if (is_file($link) || is_link($link)) {
            unlink($link);
        }
        else if (is_dir($link)) {
            rrmdir($link);
        }

        // Create the symlink.
        symlink($target, $link);
    }
}
