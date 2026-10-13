let rec count_upper (s : string) : int = 
  let rec check (i : int) (count : int) : int = 
    if i >= String.length s then 
      count 
    else if (i mod 2 = 0) && (String.length (String.uppercase_ascii (String.sub s i 1)) = 1) then 
      check (i + 1) (count + 1) 
    else 
      check (i + 1) count 
  in 
  check 0 0


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
