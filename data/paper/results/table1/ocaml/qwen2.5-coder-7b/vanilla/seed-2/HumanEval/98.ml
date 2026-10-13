let rec count_upper (s : string) : int = 
    let vowels = [ 'A'; 'E'; 'I'; 'O'; 'U' ] in
    let rec count_acc (acc : int) (idx : int) : int = 
        if idx >= String.length s then 
            acc
        else if idx mod 2 = 0 && List.mem (s.[idx]) vowels then 
            count_acc (acc + 1) (idx + 1)
        else 
            count_acc acc (idx + 1)
    in
    count_acc 0 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a string s, count the number of uppercase vowels in even indices. *)
(*     For example: *)
(*     >>> count_upper "aBCdEf" *)
(*     1 *)
(*     >>> count_upper "abcdefg" *)
(*     0 *)
(*     >>> count_upper "dBBE" *)
(*     0 *)
