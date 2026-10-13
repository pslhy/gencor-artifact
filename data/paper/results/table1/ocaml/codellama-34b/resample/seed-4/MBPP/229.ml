(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function that takes in a list and an integer n, and re-arranges the first n elements of the given list so that all negative elements appear before positive ones, and where the relative order among negative and positive elements is preserved. *)
let rec re_arrange_array (arr : int list) (n : int) : int list = 
    (* base case: if n is 0 or there are less than two elements to re-arrange, return the list *)
    if n <= 0 || n >= arr.length then arr
    else
        let rec partition (arr : int list) (n : int) : int list * int list = 
            (* base case: if n is 0, return the partitioned list *)
            if n = 0 then (arr, [])
            else
                let (_, rest_arr) = partition arr n-1 in
                let (left, right) = rest_arr in
                let x = rest_arr.(0) in
                if x < 0 then (x :: left, right)
                else (left, x :: right) in
        let (left, right) = partition arr n in
        left @ right

