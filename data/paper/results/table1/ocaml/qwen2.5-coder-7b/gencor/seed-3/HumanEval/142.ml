
let rec sum_squares (lst : int list) : int = 
  let rec helper (lst : int list) (acc : int) (index : int) : int =
    match lst with
    | [] -> acc
    | x::xs ->
        if index mod 3 = 0 then
          helper xs (acc + x * x) (index + 1)
        else if index mod 4 = 0 then
          helper xs (acc + x * x * x) (index + 1)
        else
          helper xs (acc + x) (index + 1)
  in helper lst 0 0

(* Test cases *)
let () =
  assert (sum_squares [1; 2; 3] = 1);
  assert (sum_squares [] = 0);
  assert (sum_squares [(-1); (-5); 2; (-1); (-5)] = -1 - 125 + 8 - 1 - 125)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     " *)
(*     This function will take a list of integers. For all entries in the list, the function shall square the integer entry if its index is a *)
(*     multiple of 3 and will cube the integer entry if its index is a multiple of 4 and not a multiple of 3. The function will not *)
(*     change the entries in the list whose indexes are not a multiple of 3 or 4. The function shall then return the sum of all entries. *)
(*     Examples: *)
(*     >>> lst *)
(*     [1; 2; 3] *)
(*     >>> lst *)
(*     [] *)
(*     >>> lst *)
(*     [(-1); (-5); 2; (-1); (-5)] *)
