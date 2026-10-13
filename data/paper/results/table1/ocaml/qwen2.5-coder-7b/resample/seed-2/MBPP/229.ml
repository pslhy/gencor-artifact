(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function that takes in a list and an integer n, and re-arranges the first n elements of the given list so that all negative elements appear before positive ones, and where the relative order among negative and positive elements is preserved. *)
let rec re_arrange_array (arr : int list) (n : int) : int list = 
    let rec separate lst positives negatives = 
        match lst with 
        | [] -> (positives, negatives)
        | x :: xs ->
            if x >= 0 then separate xs (x :: positives) negatives
            else separate xs positives (x :: negatives) in
    let (negatives, positives) = separate (List.take arr n) [] [] in
    let remaining = List.drop arr n in
    negatives @ positives @ remaining

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:44: Unbound value "List.take" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec re_arrange_array (arr : int list) (n : int) : int list = 
    let rec separate lst positives negatives = 
        match lst with 
        | [] -> (positives, negatives)
        | x :: xs ->
            if x >= 0 then separate xs (x :: positives) negatives
            else separate xs positives (x :: negatives) in
    let rec take n lst acc = 
        if n = 0 then acc else take (n - 1) (List.tl lst) (acc @ [List.hd lst]) in
    let (negatives, positives) = separate (take n arr []) [] in
    let remaining = List.drop arr n in
    negatives @ positives @ remaining

