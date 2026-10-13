let rec is_majority (arr : int list) (n : int) (x : int) : bool =
  match arr with
  | [] -> false
  | h :: t ->
      if h = x then 
        let rec count (arr : int list) (n : int) (x : int) (cnt : int) : bool =
          match arr with
          | [] -> cnt > n / 2
          | h :: t -> if h = x then count t n x (cnt + 1) else count t n x cnt
        in count arr n x 1
      else is_majority t n x


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes in a sorted list, its length (n), and an element and returns whether the element is the majority element in the given sorted list. (The majority element is the element that occurs more than n/2 times.) *)
