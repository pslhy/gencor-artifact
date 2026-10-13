let rec is_majority (arr : int list) (n : int) (x : int) : bool =
  match arr with
  | [] -> false
  | hd :: tl ->
    if hd = x then
      let count = ref 1 in
      let rec check (arr : int list) (n : int) (x : int) (count : int ref) : bool =
        match arr with
        | [] -> !count > n / 2
        | hd :: tl ->
          if hd = x then
            count := !count + 1;
            check tl (n - 1) x count
          else
            check tl (n - 1) x count
      in check tl (n - 1) x count
    else
      is_majority tl (n - 1) x


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes in a sorted list, its length (n), and an element and returns whether the element is the majority element in the given sorted list. (The majority element is the element that occurs more than n/2 times.) *)
