(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of non-repeated elements in a given list. *)
let rec find_sum (arr : int list) : int =
    let rec aux (acc : int) (visited : IntSet.t) (curr : int) : int =
        match curr with
        | None -> acc
        | Some x ->
            if IntSet.mem x visited then
                aux acc visited (List.nth arr (curr + 1))
            else
                aux (acc + x) (IntSet.add x visited) (List.nth arr (curr + 1))
    in
    aux 0 IntSet.empty (Some 0)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:40: Unbound module "IntSet" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_sum (arr : int list) : int =
    Array.fold_left ( + ) 0 arr

