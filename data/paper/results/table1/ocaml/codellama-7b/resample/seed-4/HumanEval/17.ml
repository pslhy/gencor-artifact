(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Input to this function is a string representing musical notes in a special ASCII format. *)
(*     Your task is to parse this string and return list of integers corresponding to how many beats does each *)
(*     not last. *)
(*     Here is a legend: *)
(*     'o' - whole note, lasts four beats *)
(*     'o|' - half note, lasts two beats *)
(*     '.|' - quater note, lasts one beat *)
(*     >>> parse_music "o o| .| o| o| .| .| .| .| o o" *)
(*     [4; 2; 1; 2; 2; 1; 1; 1; 1; 4; 4] *)
let rec parse_music (music_string : string) : int list =
  let len = String.length music_string in
  if len = 0 then []
  else
    let head, rest = String.take_drop 1 music_string in
    let note_len =
      match head with
      | 'o' -> 4
      | '|' -> 2
      | '.' -> 1
      | _ -> failwith "Invalid character in music string"
    in
    note_len :: parse_music rest

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:22: Unbound value "String.take_drop" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec parse_music (music_string : string) : int list =
  let len = String.length music_string in
  if len = 0 then []
  else
    let head, rest = String.sub music_string 0 1 in
    let note_len =
      match head with
      | 'o' -> 4
      | '|' -> 2
      | '.' -> 1
      | _ -> failwith "Invalid character in music string"
    in
    note_len :: parse_music (String.sub music_string 1 len)

