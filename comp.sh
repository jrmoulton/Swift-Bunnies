#!/bin/bash
echo "Compiling and creating 'main'"
swiftc -O stringExtension.swift structs.swift functions.swift testCases.swift main.swift
echo "Finished"