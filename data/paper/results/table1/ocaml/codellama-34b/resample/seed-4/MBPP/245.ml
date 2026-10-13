(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function that takes a list and finds the maximum sum of a bitonic subsequence for the given list, where a sequence is bitonic if it is first increasing and then decreasing. *)
let rec max_sum (arr : int list) : int = 
    let n = List.length arr in
    let dp = Array.make (n + 1) 0 in
    (* populate dp values using Kadane's Algorithm *)
    for i = 1 to n do
        dp.(i) <- max (dp.(i - 1) + arr.(i - 1)) 0
    done;
    (* find the maximum circular sum *)
    let circ_sum = ref 0 in
    for i = 1 to n do
        circ_sum := max !circ_sum (dp.(i) - dp.(i - 1))
    done;
    (* return the maximum sum *)
    !circ_sum

