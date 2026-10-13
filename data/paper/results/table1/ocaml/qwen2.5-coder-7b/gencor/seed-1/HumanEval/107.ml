
let rec even_odd_palindrome (n : int) :  int * int = 
  let rec is_palindrome (x : int) : bool = 
    let rec aux (digits : int list) (rev : int list) =
      match (digits, rev) with 
        ([],[]) -> true
      | ([],_) | (_,[]) -> false
      | (d::ds, r::rs) -> if d = r then aux ds rs else false
    in
    let digits = List.rev (String.to_seq (string_of_int x) |> Seq.map (fun c -> int_of_char c - int_of_char '0') |> Seq.to_dispenser |> Seq.to_dispenser |> List.of_seq) in
    aux digits (List.rev digits)
  in
  let count_even = ref 0 in
  let count_odd = ref 0 in
  for i = 1 to n do
    if is_palindrome i then
      if i mod 2 = 0 then
        incr count_even
      else
        incr count_odd
  done;
  (!count_even, !count_odd)

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
