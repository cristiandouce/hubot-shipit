# Description:
#   Rodent Motivation
#
#   Set the environment variable HUBOT_SHIP_EXTRA_SQUIRRELS (to anything)
#   for additional motivation
#
# Dependencies:
#   None
#
# Configuration:
#   HUBOT_SHIP_EXTRA_SQUIRRELS
#
# Commands:
#   ship it - Display a motivation squirrel
#
# Author:
#   maddox

squirrels = [
  "https://user-images.githubusercontent.com/367429/59542484-937e7b80-8edc-11e9-8b75-ca1d0f2c2fe9.jpg",
  "https://user-images.githubusercontent.com/367429/59542485-937e7b80-8edc-11e9-9813-96ca4d9f1fb6.png",
  "https://user-images.githubusercontent.com/367429/59542486-94171200-8edc-11e9-856d-6ca9b03783db.jpg",
  "https://user-images.githubusercontent.com/367429/59542487-94171200-8edc-11e9-89d9-abd914ff90c8.gif",
  "https://user-images.githubusercontent.com/367429/59542488-94171200-8edc-11e9-8a4f-474d8526c7cb.jpg",
  "https://user-images.githubusercontent.com/367429/59542489-94171200-8edc-11e9-9e7d-e0b4e3ca90fa.jpg",
  "https://user-images.githubusercontent.com/367429/59542490-94afa880-8edc-11e9-8c90-a1c565004868.jpg",
  "https://user-images.githubusercontent.com/367429/59542491-94afa880-8edc-11e9-9460-e4391ad867f6.jpg",
  "https://user-images.githubusercontent.com/367429/59542493-94afa880-8edc-11e9-9f0b-ef0b5e656b3d.png",
  "https://user-images.githubusercontent.com/367429/59542494-95483f00-8edc-11e9-91af-c70970b32e65.png",
  "https://user-images.githubusercontent.com/367429/59542496-95483f00-8edc-11e9-9bdd-a23ece3caf70.jpg",
  "https://user-images.githubusercontent.com/367429/59542497-95483f00-8edc-11e9-8222-7fcdd1ad9e2e.jpg",
  "https://user-images.githubusercontent.com/367429/59542498-95483f00-8edc-11e9-83e8-9ec7c52e46b2.jpg",
  "https://user-images.githubusercontent.com/367429/59542499-95e0d580-8edc-11e9-97bf-b577738f7ab4.jpg",
  "https://user-images.githubusercontent.com/367429/59542500-95e0d580-8edc-11e9-9cf4-009f4cd305be.jpg"
]

module.exports = (robot) ->

  # Enable a looser regex if environment variable is set
  if process.env.HUBOT_SHIP_EXTRA_SQUIRRELS
    regex = /\bship(ping|z|s|ped)?\s*it\b/i
  else
    regex = /\bship\s*it\b/i

  robot.hear regex, (msg) ->
    msg.send msg.random squirrels
