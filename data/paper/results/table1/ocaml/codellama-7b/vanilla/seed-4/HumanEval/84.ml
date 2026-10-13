let rec solve (n : int) : string = 
    let base2 = 
        let rec get_binary (n : int) (bin : string) : string = 
            if n <= 1 then bin
            else get_binary (n / 2) (if n mod 2 = 0 then "0" ^ bin else "1" ^ bin)
        in
        get_binary n ""
    in
    base2


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a positive integer N, return the total sum of its digits in binary. *)
(*     Example *)
(*     >>> solve 1000 *)
(*     "1" *)
(*     >>> solve 150 *)
(*     "110" *)
(*     >>> solve 147 *)
(*     "1100" *)
(*     Variables: *)
(*     @N integer *)
(*     Constraints: 0 ≤ N ≤ 10000. *)
(*     Output: *)
(*     a string of binary number *)
