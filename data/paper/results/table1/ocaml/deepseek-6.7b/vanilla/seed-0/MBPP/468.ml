let rec max_product (arr : int list) : int =
    let rec helper (array : int list) (curr_product : int) (max_product : int) : int =
        match array with
        | [] -> max_product
        | head::tail ->
            let new_product =
              if head < 0 then
                0
              else
                curr_product * head
            in
            let new_max =
              if new_product > max_product then
                new_product
              else
                max_product
            in
            helper tail new_product new_max
    in
    helper arr 1 1;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the maximum product formed by multiplying numbers of an increasing subsequence of that list. *)
