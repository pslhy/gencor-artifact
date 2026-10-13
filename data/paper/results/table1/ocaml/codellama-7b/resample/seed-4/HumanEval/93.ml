(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function that takes a message, and encodes in such a *)
(*     way that it swaps case of all letters, replaces all vowels in *)
(*     the message with the letter that appears 2 places ahead of that *)
(*     vowel in the english alphabet. *)
(*     Assume only letters. *)
(*     Examples: *)
(*     >>> encode "test" *)
(*     "TGST" *)
(*     >>> encode "This is a message" *)
(*     "tHKS KS C MGSSCGG" *)
let rec encode (message : string) : string = 
    let open Batteries in
    let char_map (c : char) : char = 
        let char_pos = Char.code c
        if char_pos >= 97 && char_pos <= 122 then (* lowercase *)
            let vowel_pos =
                match char_pos with
                | 97 | 101 | 105 | 111 | 117 => char_pos + 2
                | _ => char_pos
            in
            Char.chr vowel_pos
        else if char_pos >= 65 && char_pos <= 90 then (* uppercase *)
            let vowel_pos =
                match char_pos with
                | 65 | 69 | 73 | 79 | 85 => char_pos + 2
                | _ => char_pos
            in
            Char.chr vowel_pos
        else
            c
    in
    String.map char_map message

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:9: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec encode (message : string) : string =
  let open Batteries in
  let encode_char (c : char) : string =
    match c with
    | 'A' -> "1"
    | 'C' -> "2"
    | 'G' -> "3"
    | 'T' -> "4"
    | 'M' -> "5"
    | 'K' -> "6"
    | 'R' -> "7"
    | 'Y' -> "8"
    | 'B' -> "9"
    | 'D' -> "10"
    | 'H' -> "11"
    | 'V' -> "12"
    | 'N' -> "13"
    | 'W' -> "14"
    | 'S' -> "15"
    | 'E' -> "16"
    | 'F' -> "17"
    | 'I' -> "18"
    | 'L' -> "19"
    | 'P' -> "20"
    | 'x' -> "21"
    | '\n' -> "\n"
    | ' ' -> " "
    | c -> failwith (Printf.sprintf "Invalid character: %c" c)
  in
  let encode_message (message : string) : string = BatString.map encode_char message in
  encode_message message

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:12: Unbound module "Batteries" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec encode (message : string) : string =
  Let char_map =
    {
      'A' : "1", 'C' : "2", 'G' : "3", 'T' : "4",
      'M' : "5", 'K' : "6", 'R' : "7", 'Y' : "8",
      'B' : "9", 'D' : "10", 'H' : "11", 'V' : "12",
      'N' : "13", 'W' : "14", 'S' : "15", 'E' : "16",
      'F' : "17", 'I' : "18", 'L' : "19", 'P' : "20",
    }
  in
  String.map char_map message

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:11: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec encode (message : string) : string =
  let char_map =
    [
      'A', "1"; 'C', "2"; 'G', "3"; 'T', "4";
      'M', "5"; 'K', "6"; 'R', "7"; 'Y', "8";
      'B', "9"; 'D', "10"; 'H', "11"; 'V', "12";
      'N', "13"; 'W', "14"; 'S', "15";
    ]
  in
  String.map char_map message

