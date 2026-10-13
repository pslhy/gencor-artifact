let rec sum_squares (lst : int list) : int =
  match lst with
  | [] -> 0
  | h :: t ->
    let is_mod_3 = h mod 3 = 0 in
    let is_mod_4 = h mod 4 = 0 in
    let is_mod_3_but_not_mod_4 = is_mod_3 && not is_mod_4 in
    if is_mod_3_but_not_mod_4 then h * h * h
    else if is_mod_4 then h * h
    else if is_mod_3 then h * h * h
    else h
    + sum_squares t

let () =
  let lst = [1; 2; 3] in
  assert (sum_squares lst = 14);
  let lst = [] in
  assert (sum_squares lst = 0);
  let lst = [-1; -5; 2; -1; -5] in
  assert (sum_squares lst = -4);
  Printf.printf "All test cases passed!";


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
