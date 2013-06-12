{execFile} = require 'child_process'

freqs = ["100.0"]

console.log "Flooding #{freqs.length} frequencies:", freqs

broadcast = (wavFile, frequency) ->
  execFile "./PiFmDma", [wavFile, frequency], (err, stdout, stderr) ->
    console.log err if err?
    console.log stdout if stdout?
    console.log stderr if stderr?

for freq in freqs
  broadcast "./test.wav", freq