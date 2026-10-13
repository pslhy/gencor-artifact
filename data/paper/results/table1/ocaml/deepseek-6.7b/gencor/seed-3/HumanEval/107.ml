
let rec even_odd_palindrome (n : int) :  int * int =
  let rec is_palindrome num =
    let str = string_of_int num in
    str = String.concat "" (List.rev (String.split_on_char ' ' str)) 
  and count_palindrome i acc =
    if i > n then acc
    else if is_palindrome i then count_palindrome (i + 1) ((if i mod 2 = 0 then fst acc + 1 else fst acc, if i mod 2 = 1 then snd acc + 1 else snd acc) )
    else count_palindrome (i + 1) acc
  in count_palindrome 1 (0,0)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a positive integer n, return a tuple that has the number of even and odd *)
(*     integer palindromes that fall within the range(1, n), inclusive. *)
(*     Example 1: *)
(*     >>> even_odd_palindrome 3 *)
(*     (1, 2) *)
(*     Explanation: *)
(*     Integer palindrome are 1, 2, 3. one of them is even, and two of them are odd. *)
(*     Example 2: *)
(*     >>> even_odd_palindrome 12 *)
(*     (4, 6) *)
(*     Explanation: *)
(*     Integer palindrome are 1, 2, 3, 4, 5, 6, 7, 8, 9, 11. four of them are even, and 6 of them are odd. *)
(*     Note: *)
(*     1. 1 <= n <= 10^3 *)
(*     2. returned tuple has the number of even and odd integer palindromes respectively. *)
