
let rec parse_music (music_string : string) : int list = 
    let open String in
    let pattern = "\\s*(\\S+)\\s*" in
    let regex = String.split_on_char '\n' music_string in
    let rec parse_line line_num (line : string) : int list = 
        let rec parse_note note_num (note : string) : int = 
            match note with
            | "o" :: _ -> 4
            | "o|" :: _ -> 2
            | ".|" :: _ -> 1
            | _ -> failwith "invalid note"
        in
        for i = 0 to length line do
            match regex.((String.sub line 0 i).(line_num)) with
            | "" -> []
            | note -> (parse_note note) :: parse_line line_num (String.sub line i)
        done
    in
    parse_line 0 music_string

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
