(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the maximum product sublist of the given list. *)
let rec max_subarray_product (arr : int list) : int =
    let rec aux (arr : int list) (cur : int) (max : int) : int =
        match arr with
        | [] -> max
        | x::xs ->
            if x = 0 then
                if cur > max then
                    max_subarray_product xs
                else
                    max
            else
                let new_cur = cur * x in
                let new_max = max in
                if new_cur > new_max then
                    new_cur
                else if new_max <= new_cur then
                    new_max
                else
                    max_subarray_product xs
    in
    aux arr 1 0

