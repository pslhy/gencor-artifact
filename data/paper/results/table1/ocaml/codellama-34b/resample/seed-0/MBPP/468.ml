(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the maximum product formed by multiplying numbers of an increasing subsequence of that list. *)
let rec max_product (arr : int list) : int =
    match arr with
    | [] -> 1
    | h :: t -> 
        let (l, r) = (max_product t, max_product (List.tl t)) in
        let ans = h * List.fold_left (fun x y -> x * y) 1 t in
        max ans (max l r)

