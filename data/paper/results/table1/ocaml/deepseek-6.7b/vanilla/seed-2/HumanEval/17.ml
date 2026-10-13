let rec parse_music (music_string : string) : int list =
  let rec helper (remaining : string) : int * string =
    match remaining with
    | "" -> (0, "")
    | "o" -> (4, "")
    | "o|" -> (2, "")
    | ".|" -> (1, "")
    | _ -> let (next, rest) = helper (String.sub remaining 2 (String.length remaining - 2)) in (next, rest) in
  let rec parse (remaining : string) (acc : int list) : int list =
    match remaining with
    | "" -> List.rev acc
    | _ -> let (next, rest) = helper remaining in parse rest (next :: acc) in
  parse music_string []


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
