let rec parse_music (music_string : string) : int list =
    let rec aux (acc : int list) (cur : string) : int list =
        match String.get cur 0 with
        | "o" -> aux (4 :: acc) (String.sub cur 1 ((String.length cur) - 1))
        | "o|" -> aux (2 :: acc) (String.sub cur 2 ((String.length cur) - 2))
        | ".|" -> aux (1 :: acc) (String.sub cur 2 ((String.length cur) - 2))
        | _ -> acc in
    aux [] music_string


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
