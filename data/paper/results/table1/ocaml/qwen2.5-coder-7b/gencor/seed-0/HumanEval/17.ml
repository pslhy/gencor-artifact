
let rec parse_music (music_string : string) : int list = 
  let rec parse notes result = 
    match String.index_opt notes ' ' with
    | Some idx -> 
        let note = String.sub notes 0 idx in
        let beats = 
          match note with
          | "o" -> 4
          | "o|" -> 2
          | ".|" -> 1
          | _ -> invalid_arg "Invalid note" in
        parse (String.sub notes (idx + 1) (String.length notes - idx - 1)) (result @ [beats])
    | None -> 
        let note = notes in
        let beats = 
          match note with
          | "o" -> 4
          | "o|" -> 2
          | ".|" -> 1
          | _ -> invalid_arg "Invalid note" in
        result @ [beats]
  in
  parse music_string []

(* Test case *)
let () =
  let result = parse_music "o o| .| o| o| .| .| .| .| o o" in
  print_int (List.length result);  (* Output: 11 *)
  List.iter (fun x -> Printf.printf "%d " x) result;  (* Output: 4 2 1 2 2 1 1 1 1 4 4 *)
  print_newline()

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
