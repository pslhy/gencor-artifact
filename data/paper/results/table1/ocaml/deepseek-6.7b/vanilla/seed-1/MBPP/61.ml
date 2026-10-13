let rec count_Substrings (s : string) : int =
    let length = String.length s in
    let rec helper (str : string) (len : int) : int =
        if len = 0 then 0
        else if len = 1 then if int_of_string (String.make 1 (String.get str 0)) mod 2 = 0 then 1 else 0
        else let mid = len / 2 in
             helper str mid + helper (String.sub str (mid + 1) (len - mid - 1)) mid + helper (String.sub str 0 mid) mid
    in helper s length


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of substrings with the sum of digits equal to their length. *)
