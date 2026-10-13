let rec max_sum (arr : int list) : int = 
    let n = List.length arr in
    let inc = Array.make n 0 in
    let dec = Array.make n 0 in
    for i = 0 to n - 1 do
        inc.(i) <- List.nth arr i
        dec.(i) <- List.nth arr i
        for j = 0 to i - 1 do
            if List.nth arr j < List.nth arr i then
                inc.(i) <- max inc.(i) (inc.(j) + List.nth arr i)
            if List.nth arr i < List.nth arr j then
                dec.(i) <- max dec.(i) (dec.(j) + List.nth arr i)
        done
    done;
    let ans = Array.make n 0 in
    for i = 0 to n - 1 do
        ans.(i) <- inc.(i) + dec.(i) - List.nth arr i
    done;
    Array.fold_left max Int.min_int ans


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes a list and finds the maximum sum of a bitonic subsequence for the given list, where a sequence is bitonic if it is first increasing and then decreasing. *)
