let rec find_min_diff (arr : int list) (n : int) : int = 
    (* base case: only one element remains *)
    if n = 1 then 0
    (* recursive case: more than one element remains *)
    else
        let min_diff = arr.(n-1) - arr.(0) in
        let i = 1 in 
        while i < n-1 do
            let diff = arr.(i) - arr.(i-1) in
            if diff < min_diff then min_diff = diff;
            i <- i + 1;
        done;
        min_diff
in
find_min_diff [10; 5; 3; 1; 2] 5;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the minimum difference between any two elements in a given list. https://www.geeksforgeeks.org/find-minimum-difference-pair/ *)
