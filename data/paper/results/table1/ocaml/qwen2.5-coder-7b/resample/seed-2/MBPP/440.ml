(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the first adverb and their positions in a given sentence. *)
let rec find_adverb_position (text : string) :  int * int * string = 
    let rec find_index (starts : int list) (chars : char list) (acc : int) : int * int * string =
        match chars, starts with
            _, [] -> (-1, -1, "")
          | ch::rest, 0::s -> (acc, acc+1, Char.escaped ch)
          | ch::rest, st -> find_index s rest (acc+1)
    in
    let starts = List.map String.index text (String.split_on_char ' ' "very,extremely,quite") in
    if starts = [] then (-1, -1, "")
    else find_index starts (String.to_list text) 0

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:40: Unbound value "s" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_adverb_position (text : string) :  int * int * string = 
    let rec find_index (starts : int list) (chars : char list) (acc : int) : int * int * string =
        match chars, starts with
          _, [] -> (-1, -1, "")
          | ch::rest, 0::s -> (acc, acc+1, Char.escaped ch)
          | ch::rest, st -> find_index st rest (acc+1)
    in
    let starts = List.filter_map (fun x -> try Some (String.index text x) with Not_found -> None) ["very"; "extremely"; "quite"] in
    if starts = [] then (-1, -1, "")
    else find_index starts (String.to_list text) 0
``
(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:11:2: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_adverb_position (text : string) :  int * int * string = 
    let rec find_index (starts : int list) (chars : char list) (acc : int) : int * int * string =
        match chars, starts with
          _, [] -> (-1, -1, "")
          | ch::rest, 0::s -> (acc, acc+1, Char.escaped ch)
          | ch::rest, st -> find_index st rest (acc+1)
    in
    let starts = List.filter_map (fun x -> try Some (String.index text x) with Not_found -> None) ["very"; "extremely"; "quite"] in
    if starts = [] then (-1, -1, "")
    else 
        let sorted_starts = List.sort compare starts in
        find_index sorted_starts (String.to_list text) 0

