
function parse_music(music_string: string): number[] {
  const music_notation = {
    'o': 4,
    'o|': 2,
    '.|': 1
  }
  return music_string.split(' ').map(note => music_notation

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Input to this function is a string representing musical notes in a special ASCII format.
//     Your task is to parse this string and return array of integers corresponding to how many beats does each
//     not last.
//     Here is a legend:
//     'o' - whole note, lasts four beats
//     'o|' - half note, lasts two beats
//     '.|' - quater note, lasts one beat
//     >>> parse_music("o o| .| o| o| .| .| .| .| o o")
//     [4, 2, 1, 2, 2, 1, 1, 1, 1, 4, 4]
