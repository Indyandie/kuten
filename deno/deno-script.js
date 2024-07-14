const command = new Deno.Command('ls', {
  args: [
    '-l',
  ],
})

const child = await command.spawn()
const { code, stdout, stderr } = command.output()

console.log(new TextDecoder().decode(stdout))

const status = await child.status
console.log(status)
