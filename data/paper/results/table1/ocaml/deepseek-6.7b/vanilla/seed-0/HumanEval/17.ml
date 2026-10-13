let rec parse_music (music_string : string) : int list =
    let rec parse_helper (rest : string) (acc : int list) : int list =
        match rest with
        | "" -> acc
        | _ -> match String.get rest 0 with
            | 'o' -> parse_helper (String.sub rest 1 (String.length rest - 1)) (4::acc)
            | 'o' when String.get rest 1 = '|' -> parse_helper (String.sub rest 2 (String.length rest - 2)) (2::acc)
            | '.' when String.get rest 1 = '|' -> parse_helper (String.sub rest 2 (String.length rest - 2)) (1::acc)
            | _ -> parse_helper (String.sub rest 1 (String.length rest - 1)) acc in
    parse_helper (String.trim music_string) []


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
