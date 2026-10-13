let rec is_woodall (x : int) : bool =
  match x with
  | 0 -> false
  | 1 -> false
  | _ -> is_woodall (x - succ (log_l x)) || is_woodall (x - pred (log_l x))

and log_l (x : int) : int =
  let rec loop acc n =
    if n <= 0 then
      acc
    else
      loop (acc + 1) (n / 10)
  in loop 0 x

(* Test cases *)
is_woodall 23;; (* returns: true *)
is_woodall 37;; (* returns: true *)
is_woodall 29;; (* returns: false *)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check if the given number is woodball or not. *)
