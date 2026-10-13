(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the maximum product sublist of the given list. *)
let rec max_subarray_product (arr : int list) : int =
  if List.length arr <= 1 then
    raise (Invalid_argument "input list has to be of length > 1")
  else
    let rec max_subarray_product_aux (arr : int list) (i : int) (j : int) : int * int =
      if i = j then
        (arr.(i), i)
      else
        let (a, b) = max_subarray_product_aux arr (i + 1) j in
        let (c, d) = arr.(i) * a, i in
        let (e, f) = arr.(j) * b, j in
        if c > e then
          (c, d)
        else
          (e, f)
    in
    let (_, i) = max_subarray_product_aux arr 0 (List.length arr - 1) in
    i

