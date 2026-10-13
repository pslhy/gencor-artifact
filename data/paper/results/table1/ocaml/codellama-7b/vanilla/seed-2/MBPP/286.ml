let rec max_sub_array_sum_repeated (a : int list) (n : int) (k : int) : int =
  let module M = struct exception Negative_sum end in
  let rec loop (a : int list) (i : int) (j : int) (sum : int) : int =
    match a with
    | [] -> sum
    | h :: t ->
      let h = if h < 0 then raise M.Negative_sum else h in
      if i = j then
        let rec loop () =
          match t with
          | [] -> sum
          | h :: t ->
            let h = if h < 0 then raise M.Negative_sum else h in
            loop t (i + 1) (j + 1) (if sum < h then h else sum)
        in
        loop ()
      else
        loop t (i + 1) (j + 1) (if sum < (h + loop t (i + 1) (j + 1) 0) then h + loop t (i + 1) (j + 1) 0 else sum)
  in
  let sum = match a with | [] -> 0
    | h :: t -> h + loop t 0 0 0
  in
  sum * k


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the largest sum of a contiguous list in the modified list which is formed by repeating the given list k times. *)
