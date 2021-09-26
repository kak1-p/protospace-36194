# README

## usersテーブル
email       string    null: false
password    string    null: false
name        string    null: false
profile     text      null: false
occupation  text      null: false
position    text      null: false

has_many :comments
has_many :prototypes

## comments
text        text      null: false
user        references
prototype   references

belongs_to :user
belongs_to :prototype

## prototypes
title       string    null: false
catch_copy  text      null: false
concept     text      null: false
image       ActiveStorage
user        references

has_many :comments
belong_to :user