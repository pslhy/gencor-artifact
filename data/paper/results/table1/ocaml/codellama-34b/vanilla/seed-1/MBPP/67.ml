let rec bell_number (n : int) : int =
    if n <= 1 then 1
    else
        let rec helper i current acc =
            if i <= n then
                let next = current * (n - i) / (i + 1)
                helper (i + 1) next (acc + current * (n - i))
            else acc
        helper 2 1 1

let partition_number (n : int) : int =
    bell_number (2 * n)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the number of ways to partition a set of Bell numbers. *)
