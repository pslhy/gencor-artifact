let rec parse_music (music_string : string) : int list = 
    let open String in
    let pattern = "\\s*(\\S+)\\s*" in
    let regex = Str.regexp pattern in
    let rec parse music_list offset = 
        match Pcre.exec ~pat:regex ~pos:offset music_string with
        | Some groups when Array.length groups >= 2 -> 
            let note = Pcre.get_substring music_string (Array.get groups 1) in
            let duration = get_duration note in
            duration :: parse_music (offset + 1)
        | Some groups when Array.length groups = 1 -> parse_music (offset + 1)
        | None -> []
    in
    parse [] 0

let get_duration (note : string) : int =
    match note with
    | "o" -> 4
    | "o|" -> 2
    | ".|" -> 1
    | _ -> failwith "Invalid note"

let parse_music (music_string : string) : int list = parse_music music_string


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
