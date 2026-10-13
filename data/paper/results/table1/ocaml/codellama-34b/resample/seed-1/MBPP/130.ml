(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the item with maximum frequency in a given list. *)
let rec max_occurrences (nums : int list) : int =
    let rec aux nums max_occs max_num =
        match nums with
        | [] -> max_num
        | head :: tail ->
            let occ = List.filter (head =) nums in
            if List.length occ > max_occs then (
                aux tail List.length (Some head) 
            ) else (
                aux tail max_occs max_num
            ) 
    in
    aux nums 0 None

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:42: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_occurrences (nums : int list) : int =
  let rec aux nums max_occs max_num =
    match nums with
    | [] -> max_num
    | head :: tail ->
        let occ = List.filter (fun x -> x = head) nums in
        if List.length occ > max_occs then
          aux tail List.length (Some head)
        else
          aux tail max_occs max_num
  in
  aux nums 0 None

