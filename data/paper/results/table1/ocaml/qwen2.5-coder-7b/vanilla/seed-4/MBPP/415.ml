let rec max_Product (arr : int list) :  int * int = 
    let rec find_max li maxval = match li with
    | [] -> maxval
    | h::t -> find_max t (max h maxval) in
    let max_val = find_max arr 0 in
    let rec find_second_max li second_max maxval = match li with
    | [] -> second_max
    | h::t -> if h = maxval then find_second_max t second_max maxval else
               find_second_max t (max second_max h) maxval in
    let second_max_val = find_second_max arr 0 max_val in
    (max_val, second_max_val)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find a pair with highest product from a given list of integers. *)
