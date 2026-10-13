
let rec odd_Equivalent (s : string) (n : int) : int =
    match n with
    | 0 -> 0
    | _ ->
        let rev : string = String.init (String.length s) (fun i -> s.[String.length s - i - 1]) in
        let rev_binary : string = String.map (fun x -> if x = '0' then '1' else '0') rev in
        odd_Equivalent rev_binary (n - 1)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the number of numbers with an odd value when rotating a binary string the given number of times. *)
