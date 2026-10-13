(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     You are given a positive integer n. You have to create an integer list a of length n. *)
(*     For each i (1 ≤ i ≤ n), the value of a[i] = i * i - i + 1. *)
(*     Return the number of triples (a[i], a[j], a[k]) of a where i < j < k, *)
(*     and a[i] + a[j] + a[k] is a multiple of 3. *)
(*     Example : *)
(*     >>> get_max_triples 5 *)
(*     1 *)
(*     Explanation: *)
(*     a = [1, 3, 7, 13, 21] *)
(*     The only valid triple is (1, 7, 13). *)
let rec get_max_triples (n : int) : int =
    if n <= 0 then 0
    else if n = 1 then 1
    else
        let a = Array.make n 0
        a.(0) <- 1
        for i = 1 to n - 1 do
            a.(i) <- i * i - i + 1
        done
        let rec count_triples (k : int) (acc : int) : int =
            if k < n - 1 then 0
            else if a.(k) mod 3 = 0 then acc + 1
            else count_triples (k - 1) (acc + 1)
        in
            count_triples (n - 1) 0

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:15: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec get_max_triples (n : int) : int =
    if n <= 0 then 0
    else if n = 1 then 1
    else
        let a = Array.make n 0
        for i = 1 to n - 1 do
            a.(i) <- i * i - i + 1
        done
        let rec count_triples (k : int) (acc : int) : int =
            if k < 0 then 0
            else if a.(k) mod 3 = 0 then acc + 1
            else count_triples (k - 1) (acc + 1)
        in
            count_triples (n - 1) 0

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:9: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec get_max_triples (n : int) : int =
    if n <= 0 then 0
    else if n = 1 then 1
    else
        let a = Array.make n 0 in
        for i = 1 to n - 1 do
            a.(i) <- i * i - i + 1
        done;
        let rec count_triples (k : int) (acc : int) : int =
            if k < 0 then 0
            else if a.(k) mod 3 = 0 then acc + 1
            else count_triples (k - 1) (acc + 1)
        in
            count_triples (n - 1) 0

