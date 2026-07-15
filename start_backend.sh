#!/usr/bin/env bash

set -e

source .venv/Scripts/activate

cd backend

uvicorn main:app --reload