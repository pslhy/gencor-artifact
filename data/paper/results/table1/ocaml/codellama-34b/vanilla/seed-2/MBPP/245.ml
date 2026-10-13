let rec max_sum (arr : int list) : int =
    let n = List.length arr in
    let t = Array.make_matrix n n 0 in
    let m = ref 0 in
    for i = 0 to n - 1 do
        m := max !m (t.(i).(i) + t.(i + 1).(i));
        for j = i + 1 to n - 1 do
            t.(i).(j) <- max (t.(i).(j - 1) + arr.(j)) (t.(i + 1).(j - 1) + arr.(j));
            m := max !m (t.(i).(j) + t.(j + 1).(j));
        done;
    done;
    !m


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes a list and finds the maximum sum of a bitonic subsequence for the given list, where a sequence is bitonic if it is first increasing and then decreasing. *)
