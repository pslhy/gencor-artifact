let rec count_upper (s : string) : int =
    if s = "" then 0
    else if String.get s 0 |> Char.code |> (fun x -> x >= 65 && x <= 90) && List.nth ['A'; 'E'; 'I'; 'O'; 'U'] ((String.get s 0 |> Char.code) - 65) = String.get s 0 then 1
    else 0 + count_upper (String.sub s 1 (String.length s - 1))


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
