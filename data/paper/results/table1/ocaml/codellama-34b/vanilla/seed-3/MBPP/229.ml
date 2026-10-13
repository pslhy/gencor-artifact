let rec re_arrange_array (arr : int list) (n : int) : int list =
    if n = 0 then
        arr
    else
        let arr_before = re_arrange_array arr (n - 1) in
        let elem = List.nth arr n in
        if elem < 0 then
            List.append [elem] arr_before
        else
            List.append arr_before [elem]
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes in a list and an integer n, and re-arranges the first n elements of the given list so that all negative elements appear before positive ones, and where the relative order among negative and positive elements is preserved. *)
