let rec find_min_diff (arr : int list) (n : int) : int =
    let min_diff = 10000 in
    let compared = ref false in
    for i = 0 to n - 1 do
        if not !compared then begin
            compared := true;
            for j = i + 1 to n - 1 do
                if abs (arr.(i) - arr.(j)) < min_diff then
                    min_diff := abs (arr.(i) - arr.(j));
            done
        end
    done;
    min_diff


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the minimum difference between any two elements in a given list. https://www.geeksforgeeks.org/find-minimum-difference-pair/ *)
