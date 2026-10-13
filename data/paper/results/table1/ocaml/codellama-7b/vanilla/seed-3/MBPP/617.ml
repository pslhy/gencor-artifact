let rec min_Jumps (steps :  int * int) (d : int) : float =
  if d = 0 then
    (* This is our base case - we reached the endpoint.*)
    0.
  else
    (* Otherwise, calculate the minimum number of jumps
       required to reach the endpoint from all possible
       adjacent points. *)
    let rec min_Jumps' (agg : float) (ds : int list) : float =
      match ds with
      | [] -> (* This is our induction case when we reached the last element. *)
          agg
      | d' :: ds' ->
          (* Add the minimum number of jumps required
             to reach the endpoint from the current point. *)
          let next_agg =
            match d' with
            | d when d = 0 -> agg
            | _ -> min_Jumps (d', 0) + agg
          in
          (* Recursively calculate the minimum number of
             jumps required to reach the endpoint from all
             possible adjacent points. *)
          min_Jumps' next_agg ds'
    in
    (* Calls the minimum number of jumps required from
       all possible adjacent points. *)
    min_Jumps' (float_of_int (d - 1)) [ d - 1; d - 2; d - 3 ]

(* Calls the function to find the minimum number of
   jumps required to reach the endpoint from the
   origin. *)
min_Jumps (0, 0) 2


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check for the number of jumps required of given length to reach a point of form (d, 0) from origin in a 2d plane. *)
