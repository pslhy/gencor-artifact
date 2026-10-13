let rec odd_Equivalent (s : string) (n : int) : int =
    match n with
    | 0 -> 0
    | _ ->
        let rev : string = String.rev s in
        let rotated : string = Utils.sub s 1 (String.length s - 1) ^ rev in
        odd_Equivalent rotated (n - 1)

let count_Odd_equivalent_bits (s : string) (n : int) : int =
    let num_odd : int -> int = odd_Equivalent s
    in List.fold_left (fun n s -> n * 2 + num_odd s) 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the number of numbers with an odd value when rotating a binary string the given number of times. *)
