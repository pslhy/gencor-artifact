(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find sum of products of all possible sublists of a given list. https://www.geeksforgeeks.org/sum-of-products-of-all-possible-sublists/ *)
let rec sum_Of_Subarray_Prod (arr : int list) : int =
    if List.length arr <= 1 then
        Array.Make_Rectangular(1, 1, 0)
    else
        let left = arr.(0) in
        let right = arr.(List.length arr - 1) in
        left * right + sum_Of_Subarray_Prod(Array.sub arr 1 (List.length arr - 2));;

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:9: Unbound constructor "Array.Make_Rectangular" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec sum_Of_Subarray_Prod (arr : int list) : int =
    if List.length arr <= 1 then
        Array.make_rectangular 1 1 0
    else
        let left = arr.(0) in
        let right = arr.(List.length arr - 1) in
        left * right + sum_Of_Subarray_Prod(Array.sub arr 1 (List.length arr - 2));;

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:9: Unbound value "Array.make_rectangular" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec sum_Of_Subarray_Prod (arr : int list) : int =
    if List.length arr <= 1 then
        failwith "Invalid input"
    else
        let left = arr.(0) in
        let right = arr.(List.length arr - 1) in
        left * right + sum_Of_Subarray_Prod(Array.sub arr 1 (List.length arr - 2));;

