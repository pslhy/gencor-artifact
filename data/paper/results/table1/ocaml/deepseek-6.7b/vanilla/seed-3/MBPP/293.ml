let rec otherside_rightangle (w : int) (h : int) : float =
  let area = (w * h) in
  let thirdSide = sqrt(sqrt((float(w*w)) +. (float(h*h)) -. (float(area))) +. (float(area))) in
  thirdSide

let sqrt (x:float):float =
    let rec sqrt_helper (guess:float) : float =
        if ((guess * guess) -. x) *. (guess *. guess) < sqrt(x)  then
            guess
        else
            sqrt_helper (guess -. ((guess * guess) -. x) /. (2.0 *. guess))
    in sqrt_helper (x /. 2.0)
;; 
print_float(otherside_rightangle 5 12)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the third side of a right angled triangle. *)
