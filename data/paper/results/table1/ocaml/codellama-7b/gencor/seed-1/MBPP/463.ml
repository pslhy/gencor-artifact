
let rec max_subarray_product (arr : int list) : int =
    let acc = ref 1 in
    let max_product = ref 1 in
    let product = ref 1 in
    let length = List.length arr in
    let rec helper (i : int) (j : int) : unit =
        if i >= j then (
            if !product > !max_product then (
                max_product := !product;
                acc := i;
                helper i length
            ) else (
                acc := i;
                helper (i + 1) length
            )
        )
        else (
            let elem = List.nth arr j in
            product := !product * elem;
            if !product > !max_product then max_product := !product;
            helper i (j + 1)
        ) in
    helper 0 0;
    List.rev (List.tl (List.rev (List.mapi (fun i elem -> if i = !acc then elem else 0) arr)));

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the maximum product sublist of the given list. *)
