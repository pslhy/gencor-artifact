(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the first adverb and their positions in a given sentence. *)
let rec find_adverb_position (text : string) :  int * int * string =
  match text with
  | "" -> raise Not_found
  | text -> 
    match (List.rev @@ String.explode text) with
    | word :: rev_text when (List.mem word ["so"; "soon"; "more"; "very"; "even"; "too"; "possibly"]) -> (List.length rev_text - 1, List.length text, word)
    | _ :: rev_text -> find_adverb_position (String.concat "" @@ List.rev rev_text)
    | [] -> raise Not_found

let sentence = "The dog ran quickly to the lake";;
find_adverb_position sentence;;

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:24: Unbound value "String.explode" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_adverb_position (text : string) :  int * int * string =
  match text with
  | "" -> raise Not_found
  | text -> 
    match (List.rev @@ String.split_on_char ' ' text) with
    | word :: rev_text when (List.mem word ["so"; "soon"; "more"; "very"; "even"; "too"; "possibly"]) -> (List.length rev_text - 1, List.length text, word)
    | _ :: rev_text -> find_adverb_position (String.concat "" @@ List.rev rev_text)
    | [] -> raise Not_found

let sentence = "The dog ran quickly to the lake";;
find_adverb_position sentence;;

