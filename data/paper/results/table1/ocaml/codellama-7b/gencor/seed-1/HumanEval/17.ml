
let rec parse_music (music_string : string) : int list =
  let is_whole_note = String.equal music_string "o" in
  let is_half_note = String.equal (String.sub music_string 0 2) "o|" in
  let is_quarter_note = String.equal (String.sub music_string 0 3) ".|" in
  match (is_whole_note, is_half_note, is_quarter_note) with
  | (true, false, false) -> [4]
  | (false, true, false) -> [2]
  | (false, false, true) -> [1]
  | (false, false, false) ->
      let note_length_list = parse_music (String.sub music_string 1 (String.length music_string - 1)) in
      [1] @ note_length_list
  | _ -> failwith "Invalid music string"

let example_music = "o o| .| o| o| .| .| .| .| o o"

let _ =
  print_endline (Int.to_string (List.length (parse_music example_music)))

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
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
