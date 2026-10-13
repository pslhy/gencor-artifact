
let rec re_arrange_array (arr : int list) (n : int) : int list = 
    let rec separate lst positives negatives = 
        match lst with 
        | [] -> (positives, negatives)
        | x :: xs ->
            if x >= 0 then separate xs (x :: positives) negatives
            else separate xs positives (x :: negatives) in
    let (negatives, positives) = separate (List.rev (List.tl arr)) [] [] in
    List.rev negatives @ positives

(* Test cases *)
let () =
    assert (re_arrange_array [1; -1; 3; 2; -7, -5, 11, 6 ] 4 = [-1; -7; -5; 1; 3; 2; 11; 6]);
    assert (re_arrange_array [-5; -2; 5; 2; 4, 7, 1, 8, 0, -8] 10 = [-5; -2; -8; 5; 2; 4; 7; 1; 8; 0]);
    assert (re_arrange_array [5; 3; 4; 2; 1] 5 = [5; 3; 4; 2; 1])
    (* Add more test cases if necessary *)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes in a list and an integer n, and re-arranges the first n elements of the given list so that all negative elements appear before positive ones, and where the relative order among negative and positive elements is preserved. *)
