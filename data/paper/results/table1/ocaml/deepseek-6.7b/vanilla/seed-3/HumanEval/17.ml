let rec parse_music (music_string : string) : int list =
    match music_string with
    | "o" -> 4 :: parse_music ""
    | "o|" -> 2 :: parse_music ""
    | ".|" -> 1 :: parse_music ""
    | _ -> (match music_string.[0] with
            | 'o' -> 4 + (parse_music (String.sub music_string 1 (String.length music_string - 1)))
            | 'o' -> 2 + (parse_music (String.sub music_string 2 (String.length music_string - 2)))
            | '.' -> 1 + (parse_music (String.sub music_string 2 (String.length music_string - 2)))
            | _ -> 0)
            |> (fun x -> (match music_string.[0] with
                | '|' -> x + (parse_music (String.sub music_string 1 (String.length music_string - 1)))
                | _ -> x))
    |> List.rev


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
