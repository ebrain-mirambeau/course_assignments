declare
fun {Length N Acc}
   if N == nil then
      Acc
   else
      {Length {Inspect N.2} 1+Acc}
   end
end

declare
fun {MainLength Int}
   local Length in
      fun {Length Int Acc}
	 if Int == nil then
	    Acc
	 else
	    {Length {Inspect Int.2} 1+Acc}
	 end
      end
      {Length Int 0}
   end
end

fun {MainMirror Int}

%% function prototypes

declare
fun {FromListToTree L}
   if L == nil then L
   else  
      local Help in
	 fun {Help T L}
	    if L == nil then T
	    else
	       if L.1 < T.1 then {Help btree(L.1 left:T right:leaf) L.2}
	       else
		  {Help T.right = btree(L.1 left:leaf right:leaf) L.2}
	       end
	    end
	 end
	 {Help btree(L.1 left:leaf right:leaf) L.2}
      end
   end
end

declare
fun {FromListToTree L}
   if L == nil then L
   else  
      local Help in
	 fun {Help T L}
	    if L == nil then T
	    else
	       if L.1 < T.1 then {Help btree(L.1 left:T right:leaf) L.2}
	       else
		  {Help T.right = btree(L.1 left:leaf right:leaf) L.2}
	       end
	    end
	 end
	 {Help btree(L.1 left:leaf right:leaf) L.2}
      end
   end
end

declare
fun {FromListToTree L}
   if L == nil then L
   else  
      local Help in
	 fun {Help T L}
	    if L == nil then T
	    else
	       if L.1 < T.1 then {Help btree(L.1 left:T right:leaf) L.2}
	       elseif L.1 > T.1 then
		  {Help {AdjoinAt T right btree(L.1 left:leaf right:leaf)} L.2}
	       else
		  {Help T L.2}
	       end
	    end
	 end
	 {Help btree(L.1 left:leaf right:leaf) L.2}
      end
   end
end

declare
fun {FromListToTree L}
   if L == nil then L
   else  
      local Help in
	 fun {Help T L}
	    if L == nil then T
	    else
	       if L.1 < T.1 then {AdjoinAt {Help T.left L.2} left btree(L.1 left:leaf right:leaf)}
	       elseif L.1 > T.1 then
		  {Help {AdjoinAt T right btree(L.1 left:leaf right:leaf)} L.2}
	       else
		  {Help T L.2}
	       end
	    end
	 end
	 {Help btree(L.1 left:leaf right:leaf) L.2}
      end
   end
end

{Browse {FromListToTree [1 2 3]}}

    local Mirror in
        fun {Mirror Int Acc}
            [YOUR CODE]
        end
        {Mirror Int 0}
    end
end

declare
fun {MainMirror Int}
   local Mirror in
      fun {Mirror Int Acc}
	 local MainLength in
	    fun {MainLength Int}
	       local Length in
		  fun {Length Int Acc}
		     if Int == nil then
			Acc
		     else
			{Length {Inspect Int.2} 1+Acc}
		     end
		  end
		  {Length Int 0}
	       end
	    end
	 end
	 {Mirror Int Acc}
      end
      {Mirror Int 0}
   end
end

declare
fun {MainMirror Int}
   local Mirror in
      fun {Mirror Int Acc}
	 local MainLength in
	    fun {MainLength Int2}
	       local Length in
		  fun {Length Int2 Acc2}
		     if Int == nil then
			Acc
		     else
			{Length {Inspect Int2.2} 1+Acc2}
		     end
		  end
		  {Length Int2 0}
	       end
	    end
	    if {MainLength Int} == 0 then
	       Acc
	    else
	       {Mirror {Inspect Int.2} ({Inspect Int.1} * {Pow 10 {MainLength Int}}) + Acc}
	    end
	 end
      end
      {Mirror Int 0}
   end
end

declare
fun {MainMirror Int}
   local Mirror in
      fun {Mirror Int Acc}
	 local MainLength in
	    fun {MainLength Int2}
	       local Length in
		  fun {Length Int2 Acc2}
		     if Int2 < 10 then
			1+Acc
		     else
			{Length Int2/10 1+Acc2}
		     end
		  end
		  {Length Int2 0}
	       end
	    end
	    if {MainLength Int} == 0 then
	       Acc
	    else
	       {Mirror Int/10 ((Int mod 10) * {Pow 10 {MainLength Int}})+Acc}
	    end
	 end
      end
      {Mirror Int 0}
   end
end

%% latest function

declare
fun {MainMirror Int}
   local Mirror in
      fun {Mirror Int Acc}
	 local Reverse in
	    fun {Reverse Int Exp Acc}
	       if Int == 0 then
		  Acc
	       else
		  {Reverse Int/10 Exp+1 (Int mod 10)*{Pow 10 Exp}+Acc}
	       end
	    end
	    {Reverse Int 0 Acc}
	 end
      end
      {Mirror Int 0}
   end
end

declare
fun {MainMirror Int}
   local Mirror in
      fun {Mirror Int Acc}
	 if Int < 1 then
	    Acc
	 else
	    {Mirror (Int div 10) 10*Acc+(Int mod 10)}
	 end
      end
      {Mirror Int 0}
   end
end

declare
fun {Prime N}
   local Prime2 in
      fun {Prime2 N Div Acc}
	 if N == 0 then {Acc > 2}
	 else
	    {Prime2 N Div-1 {N mod Div == 0}+Acc}
	 end
      end
      {Prime2 N N 0}
   end
end

declare
fun {Fib N}
   local FibHelper in
      fun {FibHelper N Acc}
	 if N==0 then
	    0+Acc
	 elseif N==1 then
	    1+Acc
	 else
	    {FibHelper N-1 {Fib N-1}+{Fib N-2}+Acc}
	 end
      end
      {FibHelper N 0}
   end
end

declare
fun {Fib N}
   local FibAux in
      fun {FibAux N Acc1 Acc2}
	 if N==0 then
	    Acc1
	 elseif N==1 then
	    Acc2
	 else
	    {FibAux N-1 {Fib N-1}+Acc2 {Fib N-2}+Acc1}
	 end
      end
      {FibAux N 0 1}
   end
end

\\FindString function with test cases
declare
fun {FindString S1 S2}
   if S1 == S2 then 1
   elseif S1 == nil then 0
   elseif S2 == nil then 0
   elseif S1.1 == S2.1 then
      local FSHelper in
	 fun {FSHelper S1 S2}
	    if S1 == nil then  1
	    elseif S2 == nil then 0
	    elseif S1.1 \= S2.1 then 0
	    else
	       {FSHelper S1.2 S2.2}
	    end
	 end
	 {FSHelper S1 S2}
      end
   else
      {FindString S1 S2.2}
   end
end

{Browse {FindString [b c] [a b c]}}
{Browse {FindString [c c] [a b c]}}
{Browse {FindString [c] [a b c]}}
{Browse {FindString [a b] [a b c]}}
{Browse {FindString [d] [a b c]}}
{Browse {FindString [b c] [a b d]}}
{Browse {FindString nil [a b c]}}
{Browse {FindString [b c] [b c]}}
{Browse {FindString [a b c] [b c]}}
{Browse {FindString [c c] [a b c c]}}
{Browse {FindString nil nil}}
{Browse {FindString [a b c] nil}}

declare
fun {Prefix S1 S2}
   if S1.1 == S2.1 then
      local FindString in
	 fun {FindString S1 S2}
	    if S1 == S2 then true
	    elseif S1 == nil then false
	    elseif S2 == nil then false
	    elseif S1.1 == S2.1 then
	       local FSHelper in
		  fun {FSHelper S1 S2}
		     if S1 == nil then  true
		     elseif S2 == nil then false
		     elseif S1.1 \= S2.1 then false
		     else
			{FSHelper S1.2 S2.2}
		     end
		  end
		  {FSHelper S1 S2}
	       end
	    else
	       {FindString S1 S2.2}
	    end
	 end
	 {FindString S1 S2}
      end
   else
      false
   end
end

{Browse {Prefix [a] [a b c]}}
{Browse {Prefix [a b c] [a b c d]}}
{Browse {Prefix [a c] [a b c]}}

%%Higher order functions

declare
fun {Build D C}
   fun {$ X}
      if D == nil then bottom
      elseif D.1 == X then C.1
      else
	 {{Build D.2 C.2} X}
      end
   end
end

local F C D in
   D = [1 2 3]
   C = [~1 ~2 ~3]
   F = {Build D C}
   {Browse {F 1}} 
   {Browse {F 3}} 
   {Browse {F 4}} 
end

Build my own record

declare
fun {Transform L}
   local A in
      A = {Record.make L.1 L.2.1}
      local Elements in
	 fun {Elements A L1 L2}
	    if L1 == nil then A
	    elseif {Length L2.1} > 1 then {Transform L2.1}
	    else
	       A.L1.1 = L2.1
	       {Elements A L1.2 L2.2}
	    end
	 end
	 {Elements A L.2.1 L.2.2.1}
      end
   end
end

Final version of Build my own record


declare
fun {Transform L}
   if L == nil then L
   else   
      local A in
	 A = {Record.make L.1 L.2.1}
	 local Elements in
	    fun {Elements A L1 L2}
	       if L1 == nil then A
	       else
		  if  {IsList L2.1} == true
		  then {Elements {AdjoinAt A L1.1 {Transform L2.1}} L1.2 L2.2}
		  else
		     {Elements {AdjoinAt A L1.1 L2.1} L1.2 L2.2}     
		  end
	       end
	    end
	    {Elements A L.2.1 L.2.2.1}
	 end
      end
   end
end

Trees

declare
T = tree(42
              leaf 
              leaf 
              leaf 
              tree(42
                      leaf 
                      leaf 
                      leaf 
                      tree(42 leaf) 
                      leaf) 
              leaf
	 leaf)

{Browse T.5.5}

declare
fun {Infix Tree}
      local InfixHelper in
	 fun {InfixHelper T L}
	    if T.left \= nil then {InfixHelper T.left L}
	    elseif T.left == nil andthen T.right == nil then {L.append Tree}
	    elseif T.right \= nil then {InfixHelper T.right L}
	    else
	       L
	    end
	 end
	 {InfixHelper Tree nil}
      end
end

declare
fun {Infix Tree}
      local InfixHelper in
	 fun {InfixHelper T L}
	    if T.left \= nil then {InfixHelper T.left L}
	    elseif T.left == nil andthen T.right == nil then {L.append Tree}
	    elseif T.right \= nil then {InfixHelper T.right L}
	    else
	       L
	    end
	 end
	 {InfixHelper Tree nil}
      end
end

declare
fun {Infix Tree}
      local InfixHelper in
	 fun {InfixHelper T L}
	    if T.left \= nil then {InfixHelper T.left L}
	    elseif T.left == nil andthen T.right == nil then {L.append Tree}
	    elseif T.right \= nil then {InfixHelper T.right L}
	    else
	       L
	    end
	 end
	 {InfixHelper Tree nil}
      end
end

declare
fun {Infix Tree}
   local InfixHelper in
      fun {InfixHelper T L}
	 if T == leaf then L
	 elseif T.left == leaf andthen T.right == leaf then {InfixHelper leaf {Append [T.1] L}}
	 elseif T.left \= leaf then {InfixHelper T.left L}
	 elseif T.left == leaf then {InfixHelper T.right {Append [T.1] L}}
	 else
	    {InfixHelper T.right L}
	 end
      end
      {InfixHelper Tree nil}
   end
end

{Browse {Infix btree(2 left:btree(1 left:leaf right:leaf) right:btree(3 left:leaf right:leaf))}}

{Show {Infix t(12 left:leaf right:leaf)}}

declare
fun {IncTree T}
   case T of leaf then leaf
   [] tree(key: L value: V left: Left right: Right)
   then tree(key: L value: 1+V left: {IncTree Left} right: {IncTree Right})
   end
end

%Correct Infix code

declare
fun {Infix Tree}
   if Tree == leaf then nil
   else
      {Append {Infix Tree.left} Tree.1|{Infix Tree.right}}
   end
end

%From unordered list to tree

fun {FromListToTree L}
   if L == nil then L
   else  
      local Help in
	 fun {Help T L}
	    if L == nil then T
	    else
	       if L.1 < T.1 then {Help btree(L.1 left:T right:leaf) L.2}
	       else
		  {Help T.right = btree(L.1 left:leaf right:leaf) L.2}
	       end
	    end
	 end
	 {Help btree(L.1 left:leaf right:leaf) L.2}
      end
   end
end

fun {IsBalanced Tree}
   if Tree == leaf then true
   else
      local Diff in
	 Diff = {NumLeaves Tree.left} - {NumLeaves Tree.right}
	 if Diff == 0 then true
	 elseif Diff == 1 then true
	 elseif Diff == ~1 then true
	 else
	    false
	 end
      end
   end
end

%% Final version of IsBalanced and NumLeaves

declare
fun {IsBalanced Tree}
   if Tree == leaf then true
   else
      {NumLeaves Tree.left} - {NumLeaves Tree.right} >= ~1
      andthen
      {NumLeaves Tree.left} - {NumLeaves Tree.right} =< 1
      andthen
      {IsBalanced Tree.left}
      andthen
      {IsBalanced Tree.right}
   end
end

declare
  fun {NumLeaves Tree}
   if Tree == leaf then 1
   else
      {NumLeaves Tree.left} + {NumLeaves Tree.right}
   end
end

The Oz Kernel Language

<Statement>	 ::= 	<Statement1> <Statement2>
 | 	X = f(l1:Y1 ... ln:Yn)
 | 	X = <number>
 | 	X = <atom>
 | 	X = <boolean>
 | 	{NewName X}
 | 	X = Y
 | 	local X1 ... Xn in S1 end
 | 	proc {X Y1 ... Yn} S1 end
 | 	{X Y1 ... Yn}
 | 	{NewCell Y X}
 | 	Y=@X
 | 	X:=Y
 | 	{Exchange X Y Z}
 | 	if B then S1 else S2 end
 | 	thread S1 end
 | 	try S1 catch X then S2 end
 | 	raise X end

Midterm functions

declare
fun {Split L L1 L2}
   if L == nil then L == nil
   else
      local Help in
	 fun {Help L L1 L2 C}
	    if L == nil then [L1 L2]
       	    elseif C mod 2 == 0 then
	      {Help L.2 {Append [L.1] L1} L2 C+1}
	    else
	       {Help L.2 L1 {Append [L.1] L2} C+1}
	    end
	 end
	 {Help L L1 L2 0}
      end
   end
end

declare
proc {Split L L1 L2}
   if L == nil then L == nil
   else
      local Help C I1 in
	 C = 0
	 proc {Help L L1 L2 C}
	    if L == nil then [L1 L2]
	    elseif C mod 2 == 0 then
	       C = I1 + 1
	      {Help L.2 {Append [L.1] L1} L2 C}
	    else
	       C = I1 + 1
	       {Help L.2 L1 {Append [L.1] L2} C+1}
	    end
	 end
	 {Help L L1 L2 0}
      end
   end
end

declare
fun {Split L L1 L2}
   if L == nil then [L1 L2]
   else
      {Split L.2.2 {Append [L.1] L1} {Append [L.2.1] L2}}
   end
end

declare
proc {Split L L1 L2}
   local Help C in
      C = nil
      proc {Help L L1 L2 C}
	 if L == nil then C = [L1 L2]
	 else
	    {Help L.2.2 {Append [L.1] L1} {Append [L.2.1] L2} C}
	 end
      end
   end
end

proc {Split L L1 L2}
   local Help C in
      C = nil
      proc {Help L L1 L2 C}
	 if L == nil then C = [L1 L2]
	 else
	    {Help L.2.2 {Append [L.1] L1} {Append [L.2.1] L2} C}
	 end
      end
   end
end


{Show {Split [1 2] nil}}

declare
proc {Split L L1 L2 C}
   if L == nil then C = [L1 L2]
   else
      {Split L.2.2 {Append [L.1] L1} {Append [L.2.1] L2} C}
   end
end

{Show {Split [1 2] nil nil}}
{Show {Split [1 2 3 4] nil nil}}

declare
proc {Split L L1 L2 C}
   local A B Help in
      A = 0
      proc {Help L L1 L2 A C}
	 if L == nil then C = [L1 L2]
	 else
	    A = A+1
	    if  B mod 2 == 0
	    then {Help L {Append [L.1] L1}L2 A C}
	    else
	       {Help L L1 {Append [L.1] L2} A C}
	    end
	 end
      end
      {Help L L1 L2 A C}
   end
end

{Show {Split [1 2 3] nil nil}}

latest procedure

declare
proc {Split L L1 L2 C}
   if L == nil then C = [L1 L2]
   else
      local I1 in
	 local A in
	    local N1 in
	       I1 = 1
	       if A mod 2 == 0 then
		  A = I1 + N1
		  {Split L.2 {Append [L.1] L1} L2 A}
	       else
		  A = I1 + N1
		  {Split L.2 L1 {Append [L.1] L2} A}
	       end
	    end
	 end
      end
   end
end

{Show {Split [1 2 3] nil nil}}


declare
proc {Split L L1 L2 C}
   local Aux in
      proc {Aux L L1 L2 A C}
	 if L == nil then C = [L1 L2]
	 else
	    A = A + 1
	    if A mod 2 == 0 then
	       {Aux L.2 {Append [L.1] L1} L2 A C}
	    else
	       {Aux L.2 L1 {Append [L.1] L2} A C}
	    end
	 end
      end
      {Aux L L1 L2 0 C}
   end
end

declare
proc {Split L L1 L2}
   local Splitaux in
      proc {Splitaux L U V A L2}
	 local B in
	    B = A+1
	    if L == nil then L2 = [U V]
	    else
	       if B mod 2 \= 0
	       then {Splitaux L.2 {Append [L.1] U} V B L2}
	       else
		  {Splitaux L.2 U {Append [L.1] V} B L2}
	       end
	    end
	 end
      end
      {Splitaux L L1 nil 0 L2}
   end
end

Midterm exam functions

declare
proc {Split L L1 L2}
   if L == nil then L2 = L1
   else
      {Split L.2 {Append [L.1] L1} L2}
   end
end

{Show {Split [1 2 3 4 5] nil}}
{Show {Split {Split [1 2 3 4 5] nil} nil}}

{Show {Split [1 2 3 4 5] nil}}

local L M in
   L = {Split [1 2 3 4 5] nil}
   M = {Append {Split L.1 nil} {Split L.2.1 nil}}
   {Show M}
end


declare
proc {Split L L1 L2}
   local Splitaux in
      proc {Splitaux L U V A L2}
	 local B in
	    B = A+1
	    if L == nil then L2 = [U V]
	    else
	       if B mod 2 \= 0
	       then {Splitaux L.2 {Append [L.1] U} V B L2}
	       else
		  {Splitaux L.2 U {Append [L.1] V} B L2}
	       end
	    end
	 end
      end
      {Splitaux L L1 nil 0 L2}
   end
end

{Show {Split [1 2 3 4 5] nil}}

declare
fun {Reduction L A B C D}
   if L == nil then L
   elseif
      local ReductionAux L M in
	 fun {ReductionAux L N Acc}
	    if L == nil then Acc
	    else
	       {ReductionAux L.2 N L.1*N+Acc}
	    end
	 end
	 L = {Append {Split L.1 nil} {Split L.2.1 nil}}
	 M = {ReductionAux L.1 A 0} + {ReductionAux L.2.1 B 0} + {ReductionAux L.2.2.1 C 0} + {ReductionAux L.2.2.2.1 D 0}
      end
   end
end

declare
fun {ReductionAux L N Acc}
   if L == nil then Acc
   else
      {ReductionAux L.2 N L.1*N+Acc}
   end
end

{Show {ReductionAux nil 2 0}}

fun {Add X L Acc}
   if L == nil then Acc
   else
      X*L.1 + {Add X L.2 Acc}
   end
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

declare
proc {Split L L1 L2}
   if L == nil then L2 = L1
   else
      {Split L.2 {Append [L.1] L1} L2}
   end
end

{Show {Split [1 2 3 4 5] nil}}
{Show {Split {Split [1 2 3 4 5] nil} nil}}

{Show {Split [1 2 3 4 5] nil}}

local L M in
   L = {Split [1 2 3 4 5] nil}
   M = {Append {Split L.1 nil} {Split L.2.1 nil}}
   {Show M}
end


declare
proc {Split L L1 L2}
   local Splitaux in
      proc {Splitaux L U V A L2}
	 local B in
	    B = A+1
	    if L == nil then L2 = [U V]
	    else
	       if B mod 2 \= 0
	       then {Splitaux L.2 {Append [L.1] U} V B L2}
	       else
		  {Splitaux L.2 U {Append [L.1] V} B L2}
	       end
	    end
	 end
      end
      {Splitaux L L1 nil 0 L2}
   end
end

{Show {Split [1 2 3 4 5] nil}}

declare
fun {Reduction L A B C D}
   if L == nil then L
   elseif
      local ReductionAux L M in
	 fun {ReductionAux L N Acc}
	    if L == nil then Acc
	    else
	       {ReductionAux L.2 N L.1*N+Acc}
	    end
	 end
	 L = {Append {Split L.1 nil} {Split L.2.1 nil}}
	 M = {ReductionAux L.1 A 0} + {ReductionAux L.2.1 B 0} + {ReductionAux L.2.2.1 C 0} + {ReductionAux L.2.2.2.1 D 0}
      end
   end
end

declare
fun {ReductionAux L N Acc}
   if L == nil then Acc
   else
      {ReductionAux L.2 N L.1*N+Acc}
   end
end

{Show {ReductionAux nil 2 0}}

declare
fun {Add X L Acc}
   if L == nil then Acc
   else
      X*L.1 + {Add X L.2 Acc}
   end
end

declare
proc {Split L L1 L2}
   if L == nil then L2 = L1
   else
      
   end
end


declare
proc {Split L L1 L2}
   local Splitaux in
      proc {Splitaux L U V L2}
	 if L == nil then L2 = [U V]
	 else
	    {Append {Splitaux L.2 U {Append [L.1] V}} {Splitaux L.2 {Append [L.1] U} L.2}}
	 end
      end
      {Splitaux L L1 nil L2}
   end
end

{Show {Split [1 2 3 4 5] nil}}



declare
proc {Split L L1 L2}
   local Splitaux in
      proc {Splitaux L L1 A L2 C}
	 local B in
	    B = A+1
	    if L == nil then C = [L1 L2]
	    else
	       if B mod 2 \= 0
	       then {Splitaux L.2 {Append [L.1] L1} B L2 C}
	       else
		  {Splitaux L.2 L1 B {Append [L.1] L2} C}
	       end
	    end
	 end
      end
      {Splitaux L L1 0 L2 nil}
   end
end

{Show {Split [1 2 3 4 5] nil}}

declare
fun {Reverse L}
   local A B in
      B = {NewCell L}
      C = @B
      for I in L do
	 B = {Append I C}
      end
   end
end

%%%%%%%%%%%%%%%%%Reverse%%%%%%%%%%%%%%%%%
declare
local A in
   A = {NewCell [1 2 3]}
   A := {Append [4] @A}
   {Show A}
end

declare
fun {Reverse L}
   local A in
      A = {NewCell nil}
      for I in L do
	 A := {Append [I] @A}
      end
      @A
   end
end

{Show {Reverse [1 2 3 4 5 6]}}