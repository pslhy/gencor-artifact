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
  let is_whole_note = String.equal music_string "o" in
  let is_half_note = String.equal (String.slice music_string 0 1) "o" in
  let is_quarter_note = String.equal (String.slice music_string 0 1) "." in
  match music_string with
  | "" -> []
  | 'o' -> 4 :: parse_music (String.slice music_string 1 (String.length music_string))
  | "o|" -> 2 :: parse_music (String.slice music_string 2 (String.length music_string))
  | ".|" -> 1 :: parse_music (String.slice music_string 2 (String.length music_string))
  | _ -> [] in

let main () =
  let music = "o o| .| o| o| .| .| .| .| o o" in
  print_endline (String.concat "; " (List.map string_of_int (parse_music music)));
  exit 0 in

let _ = main ()

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:18:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec parse_music (music_string : string) : int list =
  let is_whole_note = String.equal music_string "o" in
  if is_whole_note then
    4 :: parse_music (String.slice music_string 2 (String.length music_string))
  else
    let is_half_note = String.equal (String.slice music_string 0 1) "o" in
    if is_half_note then
      2 :: parse_music (String.slice music_string 2 (String.length music_string))
    else
      let is_quarter_note = String.equal (String.slice music_string 0 1) "." in
      if is_quarter_note then
        1 :: parse_music (String.slice music_string 2 (String.length music_string))
      else
        []

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:23: Unbound value "String.slice" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec parse_music (music_string : string) : int list =
  let is_whole_note = String.length music_string = 1 in
  if is_whole_note then
    4 :: parse_music (String.sub music_string 1 (String.length music_string - 1))
  else
    let is_half_note = String.length music_string = 2 in
    if is_half_note then
      2 :: parse_music (String.sub music_string 2 (String.length music_string - 2))
    else
      let is_quarter_note = String.length music_string = 3 in
      if is_quarter_note then
        1 :: parse_music (String.sub music_string 3 (String.length music_string - 3))
      else
        []

