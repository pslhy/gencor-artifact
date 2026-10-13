let rec find_Min_Length (lst : int list list) : int =
    match lst with
    | [] -> 0
    | (hd::_) as heads ->
        let min_Head = List.hd hd in
        let min_body = find_Min_Length heads in
        min_Head::min_body


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the length of the smallest list in a list of lists. *)
